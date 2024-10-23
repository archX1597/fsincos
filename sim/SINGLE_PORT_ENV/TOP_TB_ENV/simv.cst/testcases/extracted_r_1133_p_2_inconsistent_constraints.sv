class c_1133_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1133_2;
    c_1133_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzz1z10zzx101z0xzx01x000011x0zxxzxxxxzxzxzzxzzzxxzxxzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
