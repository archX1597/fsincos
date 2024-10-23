class c_1561_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1561_2;
    c_1561_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110x1101zzz0z0zzz0z1zz00101010xzzxzxzzzxzzzzzxxxzzxzxzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
