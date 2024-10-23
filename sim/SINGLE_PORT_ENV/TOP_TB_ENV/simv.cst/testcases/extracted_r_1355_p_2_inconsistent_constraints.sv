class c_1355_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1355_2;
    c_1355_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10zz00x00z11010x11x0z1z11zx111xzxzzzzxxzzxxxxzxzzxxxzxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
