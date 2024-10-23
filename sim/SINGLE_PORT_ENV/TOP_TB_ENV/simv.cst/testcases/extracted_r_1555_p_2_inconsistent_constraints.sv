class c_1555_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1555_2;
    c_1555_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz00x0010z0z1xzxx1zx00000x10xxxzxxxzzxxzxxxxxxzzzzzzzzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
