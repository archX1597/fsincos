class c_1647_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1647_2;
    c_1647_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1z10xxzz11z0z10z0x00x110x011zxzxzxxxzxzzxxzzxzzxxzzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
