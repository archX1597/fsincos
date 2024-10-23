class c_1913_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1913_2;
    c_1913_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z011110z10zz1z0zxzzxx00zzz0z00xzzxxxzxzxxzxzxxzxzxxxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
