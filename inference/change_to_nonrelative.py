import sys

label_map = {'D00':'1', 'D10': '2', 'D20':'3', 'D40':'4'}

with open(sys.argv[1],'r') as f_in, open(sys.argv[2],'w') as f_out:
    filename= sys.argv[1].split('/')[-1].replace('.txt','.jpg')
    to_write = []
    size = sys.argv[3][:-1].split('x')
    width = int(size[0])
    height = int(size[1])
    for line_in in f_in:
        cls, xcenter, ycenter, xwidth, ywidth, confidence = line_in.rstrip().split(' ')
        xcenter = float(xcenter) * width
        ycenter = float(ycenter) * height
        xwidth = float(xwidth) * width
        ywidth = float(ywidth) * height

        xmin = round(xcenter - xwidth/2)
        xmax = round(xcenter + xwidth/2)
        ymin = round(ycenter - ywidth/2)
        ymax = round(ycenter + ywidth/2)
        to_write.append(' '.join((cls, str(xmin),str(ymin),str(xmax),str(ymax))))
        

    f_out.write(filename+ ',' + ' '.join(to_write) + '\n')
