module test();


    bit [10:0] exp;
    bit [51:0] frac52;
    bit sign0,sign1;
    real fsign1,fsign0;
    initial begin
        #2 exp=11'b0;
           frac52=52'b0;
           sign0=0;
           sign1=1;
        #2 fsign0=$bitstoreal({sign0,exp,frac52});
           fsign1=$bitstoreal({sign1,exp,frac52});
        #2 $display("the sign0 is %.120f",fsign0);
            $display("the sign1 is %.120f",fsign1);
        $stop;
    end


endmodule