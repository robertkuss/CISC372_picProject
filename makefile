
image_omp:image_omp.c image.h
	gcc -g -fopenmp -o image_omp image_omp.c -lm
image_pthread: image_pthread.c image.h
	gcc -g image_pthread.c -o image_pthread -lm -lpthread
image_serial: image_serial.c image.h
	gcc -g image_serial.c -o image_serial -lm
clean:
	rm -f image output.png image_pthread image_omp

