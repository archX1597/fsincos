class c_1627_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1627_2;
    c_1627_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11zzxx0z00x011zzzzx1z011xzx010zzzxzzxxxxxxxxzzzxzzxzxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
