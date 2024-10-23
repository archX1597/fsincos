class c_1275_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1275_2;
    c_1275_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0111x0xz011011xzzz1xxx0x001zzxzxzxzxxxzxxzzzzzxzxzzzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
