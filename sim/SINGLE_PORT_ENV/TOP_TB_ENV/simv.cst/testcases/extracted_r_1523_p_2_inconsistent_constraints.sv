class c_1523_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1523_2;
    c_1523_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z10z11xxxzx01zz0z10xx1x1xxzzxzzzzxxzzxxzxxxzxzzzzzzxzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
