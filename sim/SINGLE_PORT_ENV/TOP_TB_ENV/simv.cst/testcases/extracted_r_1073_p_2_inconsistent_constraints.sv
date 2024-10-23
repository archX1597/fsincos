class c_1073_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1073_2;
    c_1073_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z1zzz0zxx10zz1zz1z110xzzxzxzzxzxxxxzxxxzxxxxxxzzzzzzxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram