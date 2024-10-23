class c_1260_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1260_2;
    c_1260_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xxxz011zxxz00zzx11xx11x10xxxzxxzxzxzxxzxxzxzxzxxzxxzzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
