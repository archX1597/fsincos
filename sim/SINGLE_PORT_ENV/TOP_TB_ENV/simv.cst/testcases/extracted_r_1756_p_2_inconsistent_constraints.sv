class c_1756_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1756_2;
    c_1756_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0xz110xz111xzz0z10zz0z1xxzx10xxzzzzxxzzxxzzzxzzzxxzzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
