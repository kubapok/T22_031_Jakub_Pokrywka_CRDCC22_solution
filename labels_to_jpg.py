import xml.etree.ElementTree as ET
from pathlib import Path
import sys

label_map = {
'Block crack':0,
'D00':1,
'D01':5,
'D10':2,
'D11':6,
'D20':3,
'D40':4,
'D43':7,
'D44':8,
'D50':9,
'Repair':10,
}


def change_one_elem(in_path, out_path):
    mytree = ET.parse(in_path)
    f_out = open(out_path,'w')

    myroot = mytree.getroot()
    size = myroot.find('size')
    width = int(size.find('width').text)
    height = int(size.find('height').text)

    objects = myroot.findall('object')

    for object in objects:
        name = object.find('name').text
        if name in label_map:
            label_id = label_map[name]
        else:
            label_id = 11
        box = object.find('bndbox')
        xmin = float(box.find('xmin').text)
        ymin = float(box.find('ymin').text)
        xmax = float(box.find('xmax').text)
        ymax = float(box.find('ymax').text)

        x_middle = (xmin + xmax) / 2
        y_middle = (ymin + ymax) / 2
        x_w = xmax - xmin
        y_w = ymax - ymin

        x_middle /= width
        y_middle /= height
        x_w /= width
        y_w /= height


        items_to_write = (label_id, x_middle, y_middle, x_w, y_w)
        items_to_write = [str(i) for i in items_to_write]
        str_to_write = ' '.join(items_to_write) + '\n'
        f_out.write(str_to_write)
    f_out.close()

p_in = Path(sys.argv[1])
p_out =sys.argv[2]

for f_in in p_in.glob('*xml'):
    f_out = str(f_in).replace('xml','txt')
    change_one_elem(f_in, f_out)
