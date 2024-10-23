class c_1661_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1661_2;
    c_1661_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1z1zzz1z0011xx0x00xxx0z010z01xzxzzzxxzxzzzzzzzxxxzxzzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
