class c_1209_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1209_2;
    c_1209_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z001z1000x010xz11xx1zzz1z0x0zxzzxxzzxzxxxxxzzzzxxzxzzxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
