class c_1528_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1528_2;
    c_1528_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zxx00x0zz0z110101xzzx00z00z0zxzxxzxxxzxxxxxxxxzxzxxzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram