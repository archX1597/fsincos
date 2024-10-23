import uvm_pkg::*;
class f_transaction extends uvm_sequence_item;                                         
        //  Group: Variables
        real              f64_value;
        bit        [10:0] f64_exp11  ;
        rand  bit         sign       ;
        bit        [51:0] f64_frac52 ;
        rand  bit  [7 :0] f41_exp8   ;
        rand  bit  [31:0] frac32 ;
	    bit        [35:0] frac36;
        rand bit   [39:0] frac40;
        rand bit          sin_cos;

        bit               RESULT_SIGN_FLIP;
        bit               X_ZERO_FLAG     ;
        bit               D_ZERO_FLAG     ;
	   `uvm_object_utils_begin(f_transaction)
	    `uvm_field_int(f41_exp8, UVM_ALL_ON)
	    //`uvm_field_int(RESULT_SIGN_FLIP,UVM_ALL_ON)
        //`uvm_field_int(X_ZERO_FLAG,UVM_ALL_ON)
        `uvm_field_int(sin_cos,UVM_ALL_ON)
        `uvm_field_int(frac32,UVM_ALL_ON)
	    `uvm_field_int(f64_exp11, UVM_ALL_ON)
	    `uvm_field_int(f64_frac52,UVM_ALL_ON)
	    `uvm_field_int(sign,UVM_ALL_ON)
	    `uvm_field_real(f64_value,UVM_ALL_ON)
	   `uvm_object_utils_end;
        //  Group: Constraints
        constraint cons {
               frac32 >={1'b1,31'b0};
               f41_exp8 < {8'b1111_1101};
               f41_exp8 >= {8'b1000_0000};                                                                                 
        }
        //  Group: Functions
       virtual function real get_value();
             return $bitstoreal({sign,f64_exp11,f64_frac52});
        endfunction

       virtual function [63:0] get_f64_bin();
            return {sign,f64_exp11,f64_frac52};
        endfunction

       virtual function bit [7:0] get_f41_exp8();
             return f41_exp8;
       endfunction

       virtual function bit [31:0] get_f41_frac32();
             return frac32;
        endfunction

       virtual function bit get_sign();
             return sign;
        endfunction

   /*     virtual function void init_transaction();
               f64_exp11  = {f41_exp8[7],f41_exp8[7],f41_exp8[7],f41_exp8[7:0]}+1023;
               frac40     = {frac36,4'b0};
               f64_frac52 = {frac40[38:0],13'b0};
	           f64_value  = $bitstoreal({sign,f64_exp11,f64_frac52});
               f41_frac32 = frac40[39:8];
        endfunction
     */
    virtual function void init_transaction(int width);
            if(width == 40) begin
                frac32     = frac40[39:8];
                frac36     = frac40[39:4];
            end 
            else if(width == 36) begin
                frac40     = {frac36,4'b0};
                frac32     = frac40[39:8];
            end
            else if(width == 32) begin
                frac40 = {frac32,8'b0};
                frac36 = frac40[39:4];
            end
            else 
                $display("wrong");
            f64_exp11  = {f41_exp8[7],f41_exp8[7],f41_exp8[7],f41_exp8[7:0]}+1023;
            f64_frac52 = {frac40[38:0],13'b0};
            if(frac32 == 32'b0000_0000);
	        f64_value  = $bitstoreal({sign,f64_exp11,f64_frac52});
    endfunction

        virtual function void init_from_f64(real init_real,int width);
        if(init_real == 0) begin
            f41_exp8 = 8'b0000_0000;
            {sign,f64_exp11,f64_frac52} = $realtobits(init_real);
            frac40     = f64_frac52[51:12];
            frac32     = frac40[39:8];
            frac36     = frac40[39:4];
        end
          else begin
	          {sign,f64_exp11,f64_frac52} = $realtobits(init_real);
               f41_exp8   = f64_exp11 - 1023;
	           f64_value  = init_real;
	           frac40     = {1'b1,f64_frac52[51:13]};
	           frac32     = frac40[39:8];
               frac36     = frac40[39:4];
               init_transaction(width);
          end
        endfunction
        
        function void post_randomize();
            frac40     = {frac32,8'b0};
            frac36     = frac40[39:4];
            frac32     = frac40[39:8];
            if(frac32==32'b0) begin
            f64_exp11  = {11'b0000_0000};
            f64_frac52 = {frac40[38:0],13'b0};
	        f64_value  = $bitstoreal({sign,f64_exp11,f64_frac52});
            end
            else begin
            f64_exp11  = {f41_exp8[7],f41_exp8[7],f41_exp8[7],f41_exp8[7:0]}+1023;
            f64_frac52 = {frac40[38:0],13'b0};
	        f64_value  = $bitstoreal({sign,f64_exp11,f64_frac52});
            end
        endfunction
        //  Constructor: new
        function new(string name = "f_transaction");
            super.new(name);
        endfunction: new
endclass: f_transaction  