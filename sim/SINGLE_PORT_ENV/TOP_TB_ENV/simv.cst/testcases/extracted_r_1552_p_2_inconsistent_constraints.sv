class c_1552_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1552_2;
    c_1552_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x010xzx0z10z110zxz1zxxzz00xzx1xzzzxzzzzzzzxzzzzzzzzzxzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
