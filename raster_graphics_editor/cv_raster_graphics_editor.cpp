

// include necessary dependencies
#include <iostream>
#include <string>
#include "opencv2/opencv.hpp"

// function prototypes
static void clickCallback(int event, int x, int y, int flags, void* userdata);

int count = 0;
cv::Point p1;
cv::Point p2;
cv::Mat imageIn;
cv::Vec3b color (255,255,255);
std::string inputFileName = "/Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/test.png";
static void crop(int event, int x, int y, int flags, void* userdata)
{
    
    if(event == cv::EVENT_LBUTTONUP)
    {
        std::cout << "LEFT CLICK UP (" << x << ", " << y << ")" << std::endl;
        p2.x = x;
        p2.y = y;
        cv:: Rect region(p1,p2);
        cv::rectangle(imageIn,region,cv::Scalar(0,0,255),3);
        imageIn = imageIn(region);
        cv::imshow("imageIn", imageIn);
    }
    
    if(event == cv::EVENT_LBUTTONDOWN)
    {
        std::cout << "LEFT CLICK DOWN (" << x << ", " << y << ")" << std::endl;
        p1.x = x;
        p1.y = y;
    }
    
    if(event == cv::EVENT_RBUTTONDOWN)
    {
        //clickCallback(event, x, y, flags, userdata);
        cv::setMouseCallback("imageIn", clickCallback, &imageIn);
    }
    
}
bool buttonDown = false;

static void pencil(int event, int x, int y, int flags, void* userdata)
{
    
    if(event == cv::EVENT_LBUTTONDOWN){
        buttonDown = true;
        std:: cout<<"L button down"<<std::endl;
    }
    
    if(event == cv::EVENT_LBUTTONUP){
        buttonDown = false;
        std::cout<<"L button up" <<std::endl;
    }
    
    if(event == cv::EVENT_MOUSEMOVE){
    
        if(buttonDown == true){
            std::cout<<"true"<<std::endl;
          
            std::cout<<"MOUSE OVER ("<< x <<", "<< y <<")"<< std::endl;
            cv::line(imageIn,cv::Point(x,y),cv::Point(x,y),color,2,1);
            cv::imshow("imageIn",imageIn);
        
        }
    }
    
   
    if(event == cv:: EVENT_RBUTTONDOWN)
    {
     
        cv::setMouseCallback("imageIn", clickCallback, &imageIn);
        //clickCallback(event, x, y, flags, userdata);
    }
    
  
}

static void eyedrop(int event, int x, int y, int flags, void* userdata)
{
    if(event == cv::EVENT_RBUTTONDOWN)
    {
        //clickCallback(event, x, y, flags, userdata);
        cv::setMouseCallback("imageIn", clickCallback, &imageIn);
    }
    
    if(event == cv::EVENT_LBUTTONDOWN)
    {
        
        color = imageIn.at<cv::Vec3b>(cv::Point(x,y));
        std::cout<< x << ", " << y << std::endl;
        std::cout<< color << std::endl;
       

    }
  
}

void check(cv::Vec3b color,cv::Vec3b pixel_color, int x, int y){
    
    std::cout<<"in check"<<std::endl;
    std::cout<<"EYEDROP "<<color<<std::endl;
    std::cout<<"pixel color"<<pixel_color<<std::endl;
    
    if( x >= imageIn.size().width){
        return;
    }
    
    if(y >= imageIn.size().height){
        return;
    }
    
    cv::Vec3b top = imageIn.at<cv::Vec3b>(cv::Point(x,y++));
    cv::Vec3b bottom = imageIn.at<cv::Vec3b>(cv::Point(x,y--));
    cv::Vec3b left = imageIn.at<cv::Vec3b>(cv::Point(x--,y));
    cv::Vec3b right = imageIn.at<cv::Vec3b>(cv::Point(x++,y));
    
    
    
    if(top[0] != color[0] || top[1] != color[1] || top[2] != color[2]){
        std::cout<<"top"<<std::endl;
        check(color, top, x,y);
        imageIn.at<cv::Vec3b>(cv::Point(x,y)) = color;
        
    }
    
    /*else{
        std::cout<<"top pixel same"<<std::endl;
        return;
    }*/
    
    if(bottom[0] != color[0] || bottom[1] != color[1] || bottom[2] != color[2]){
        std::cout<<"bottom"<<std::endl;
        check(color, bottom, x,y);
        imageIn.at<cv::Vec3b>(cv::Point(x,y)) = color;
        
    }
    
   /* else{
         std::cout<<"bottom pixel same"<<std::endl;
        return;
    }*/
    
    if(left[0] != color[0] || left[1] != color[1] || left[2] != color[2]){
        std::cout<<"left"<<std::endl;
        check(color, left, x,y);
        imageIn.at<cv::Vec3b>(cv::Point(x,y)) = color;
    }
    
    /*else{
         std::cout<<"left pixel same"<<std::endl;
        return;
    }*/
    
    if(right[0] != color[0] || right[1] != color[1] || right[2] != color[2]){
        std::cout<<"right"<<std::endl;
        check(color, right, x,y);
        imageIn.at<cv::Vec3b>(cv::Point(x,y)) = color;
        }
    
   /* else{
         std::cout<<"right pixel same"<<std::endl;
        return;
    }*/
    
    
 
}
static void paint_bucket(int event, int x, int y, int flags, void* userdata)
{
    if(event == cv::EVENT_LBUTTONDOWN){
        std::cout<<"in paint bucket"<<std::endl;
        cv::Vec3b color2 = imageIn.at<cv::Vec3b>(cv::Point(x,y));
        
        check(color,color2,x,y);
    }
    
    
    if(event == cv::EVENT_RBUTTONDOWN)
    {
        cv::setMouseCallback("imageIn", clickCallback, &imageIn);
    }
}

static void clickCallback(int event, int x, int y, int flags, void* userdata)
{
    
    if(event == cv::EVENT_LBUTTONDOWN)
    {
        std::cout << "Left DOUBLE CLICK (" << x << ", " << y << ")" << std::endl;
        imageIn = cv::imread(inputFileName, CV_LOAD_IMAGE_COLOR);
       // color = (255,255,255);
        cv::imshow("imageIn",imageIn);
    }

     if(event == cv::EVENT_RBUTTONDOWN)
    {
        //std::cout << "RIGHT CLICK (" << x << ", " << y << ")" << std::endl;
        
            if(count == 0){
                std::cout << "\nEYEDROPPER " << std::endl;
                 cv::setMouseCallback("imageIn", eyedrop, &imageIn);
               // eyedrop(event,x,y,flags,userdata);
                count++;
            }
        
            else if(count == 1){
                std::cout << "\nCROP " << std::endl;
                cv::setMouseCallback("imageIn", crop, &imageIn);
                count++;
            }
        
            else if(count == 2){
                std::cout << "\nPENCIL " << std::endl;
                cv::setMouseCallback("imageIn", pencil, &imageIn);
                count++;
            }
        
            else if(count == 3){
                std::cout << "\nPAINT BUCKET " << std::endl;
                cv::setMouseCallback("imageIn", paint_bucket, &imageIn);
                count = 0;
            }
        
        }
    
}


int main(int argc, char **argv)
{
    // open the input image
	imageIn = cv::imread(inputFileName, CV_LOAD_IMAGE_COLOR);

	// check for file error
	if(!imageIn.data)
	{
		std::cout << "Error while opening file " << inputFileName << std::endl;
		return 0;
	}
	
    // display the input image
	cv::imshow("imageIn", imageIn);
	cv::setMouseCallback("imageIn", clickCallback, &imageIn);

	cv::waitKey();
}

