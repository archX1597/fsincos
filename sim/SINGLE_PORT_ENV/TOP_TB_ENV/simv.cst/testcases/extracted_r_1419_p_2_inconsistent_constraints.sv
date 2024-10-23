class c_1419_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1419_2;
    c_1419_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00z1z10z101z1zz0z1z00zz11z1zzxxxzxxxxzzzxxxxzzxxxzxxzzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
