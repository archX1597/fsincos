class c_1376_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1376_2;
    c_1376_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz110x1zx11z0101x1xxz1z1zxx01xxxxzzxzxzxxzxxzzzxxzzxxzzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
