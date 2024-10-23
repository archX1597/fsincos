class c_1279_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1279_2;
    c_1279_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1z1101x00z100z11011zz1z1xz0xzzxxxxxzzzxzzzxxzxxxzxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
