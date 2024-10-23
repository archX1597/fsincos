class c_1778_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1778_2;
    c_1778_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzxx0xzz00z10xx0zxzx0x1zz1z11zxzzxzzzzxzxzzzzxzzzxxxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
