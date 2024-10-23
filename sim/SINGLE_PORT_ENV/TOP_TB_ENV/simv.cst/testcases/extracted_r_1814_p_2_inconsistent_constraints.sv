class c_1814_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1814_2;
    c_1814_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111zz1zx0100z0x11xz11z11zx00011zzxzxxzzxxzzzzxzxzzxzzxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
