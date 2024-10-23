class c_1731_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1731_2;
    c_1731_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00000zxz00x0z1zxzz01xzz010z0000zxzzxxxxzzzzxxzxxxzzxzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
