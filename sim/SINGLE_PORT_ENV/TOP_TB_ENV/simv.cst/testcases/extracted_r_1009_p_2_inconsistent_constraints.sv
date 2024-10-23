class c_1009_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1009_2;
    c_1009_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1x1x0111z1xxxxz0z1z1010z1x1xzzxxzzzxxzzzxzxxxxxzxxzzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
