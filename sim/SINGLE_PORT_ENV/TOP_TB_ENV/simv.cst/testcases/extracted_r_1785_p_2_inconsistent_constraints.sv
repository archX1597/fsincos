class c_1785_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1785_2;
    c_1785_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z1zx10zz00xx11001xx1010x10xxxxxxzzxxzxxxxxxzzzzzxxxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
