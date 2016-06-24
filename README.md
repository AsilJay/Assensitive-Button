


#Assensitive Button

---


* ##Introduction
  * A customed button extended from UIButton
  * To create a button that automatically attached to the left or right border of the superView

* ## How to use
  * Initiate it like a normal button
    ```objc
    MJDSensiveButton *btn = [[MJDSensiveButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [btn setBackgroundImage:[UIImage imageNamed:@"AssistiveTouch"] forState:(UIControlStateNormal)];
    [self.view addSubview:btn];
    ```
    
  * The very different usage is that it has an EdgeInsets property to which you'd like it attached. Just set the property with one line.
    ```objc
    btn.edgeInsets = UIEdgeInsetsMake(50, 50, 50, 50);
    ```
    
*  ##   Tips
  * The button won't attach to the top or the bottom of it's superview, just because the orginal coder thinks it would be a bad UI exp. 
  * If you need a button that could attach to four edges, make a copy of your own by extending or changing the original. Or, just email me to get a full version at 894318488@qq.com. Feel free. XD


