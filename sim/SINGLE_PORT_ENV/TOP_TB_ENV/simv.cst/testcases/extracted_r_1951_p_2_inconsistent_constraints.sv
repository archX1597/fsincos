class c_1951_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1951_2;
    c_1951_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzx10zzx0xx1xz1z01xx1zxxz0zxzxzxxzxxzzxxxzxzzxxxxxxxxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
