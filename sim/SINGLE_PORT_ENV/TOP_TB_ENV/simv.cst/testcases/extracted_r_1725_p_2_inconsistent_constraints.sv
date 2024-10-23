class c_1725_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1725_2;
    c_1725_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz11xzzx111x000xzzxx00zx000zx0zzzzzzxzzxxxxzxxzzxzxxzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
