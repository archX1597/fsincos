class c_1215_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1215_2;
    c_1215_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00xx00x0z0xx0z0110z11xxz00xx0xzzxzxzxzxxzzzxxxzzzxxxzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
