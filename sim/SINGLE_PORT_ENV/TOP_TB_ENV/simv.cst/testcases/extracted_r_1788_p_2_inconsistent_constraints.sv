class c_1788_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1788_2;
    c_1788_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001xxz1zzz001z1zzzzx0100x011z1zzxxxxxxxxzzzzzxzzzxxxxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
