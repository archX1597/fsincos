class c_1378_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1378_2;
    c_1378_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zzx100zzzxx0z1z0xx001001z0z1zzzzxxxzzzzxxzzxzxzzzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
