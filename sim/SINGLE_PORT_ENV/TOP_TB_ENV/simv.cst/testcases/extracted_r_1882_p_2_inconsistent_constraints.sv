class c_1882_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1882_2;
    c_1882_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxzzz10x1z0z01zz00xx0x0z0zz1zxzzxzzxzxxzzzzzzxxxxzxxxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
