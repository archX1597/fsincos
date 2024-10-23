class c_1758_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1758_2;
    c_1758_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1zzz1z1010110100z1z1x0zxzz1xxxxxzzzxxxxzxzzzzzzxzxzxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
