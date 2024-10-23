class c_1881_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1881_2;
    c_1881_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100xzzzzz01111zzz01zz0z00110z1zzxxxxzxxxxxzzxzzzxxzzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram