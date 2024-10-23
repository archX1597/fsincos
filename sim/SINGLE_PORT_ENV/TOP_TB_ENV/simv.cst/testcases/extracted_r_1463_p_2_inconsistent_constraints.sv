class c_1463_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1463_2;
    c_1463_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0zx11110100xxzzz1xz0zx1xx0z10zzxxxzzxzxzzzxxxzxzzxzxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
