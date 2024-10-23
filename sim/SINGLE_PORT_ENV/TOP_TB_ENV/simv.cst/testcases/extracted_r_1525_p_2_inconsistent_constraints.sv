class c_1525_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1525_2;
    c_1525_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx00x10xz01zx000zx10zz0z11101zxzxzxxxzzzzxxxzzxxzxzxzxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
