class c_1223_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1223_2;
    c_1223_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1x01xxx1000x00zzxx010x1z1xz10xxzzzxzxxzxzzzzxxxzzzxzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
