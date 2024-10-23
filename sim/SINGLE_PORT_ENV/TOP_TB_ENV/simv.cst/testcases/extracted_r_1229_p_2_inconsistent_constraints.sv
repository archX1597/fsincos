class c_1229_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1229_2;
    c_1229_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzzz11xz1xxz00z01x1zz1zxxz1xz1zzzzxxxzxzzzzxxzzxzzzxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
