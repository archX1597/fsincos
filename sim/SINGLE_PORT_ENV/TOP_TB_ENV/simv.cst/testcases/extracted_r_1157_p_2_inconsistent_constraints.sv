class c_1157_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1157_2;
    c_1157_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0zzz11x0z00010x00zx0zx1zxx10xxxxzzzxxxxzxzzzzxxxxzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
