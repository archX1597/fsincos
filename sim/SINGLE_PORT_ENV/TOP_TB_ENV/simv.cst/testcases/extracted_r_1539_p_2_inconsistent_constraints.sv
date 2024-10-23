class c_1539_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1539_2;
    c_1539_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzxx1z010zz0010xzxx00x1xzx001zzzxxxzxxzzzxzzzxzxxxzxzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
