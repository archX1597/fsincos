class c_1854_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1854_2;
    c_1854_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101x001z111x0xx01zzz10zzzxz0z0xxzzxzzxxzxzzxxzzzzxxxzzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
