class c_1161_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1161_2;
    c_1161_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111011z0x1xz10x0010xxx001zzxxxzxxzzzxxzxzxzzzzzxxzxxxzxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
