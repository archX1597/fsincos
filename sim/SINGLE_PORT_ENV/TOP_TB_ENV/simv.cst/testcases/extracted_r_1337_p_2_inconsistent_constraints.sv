class c_1337_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1337_2;
    c_1337_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxxxxx11xz1111x0zxz011z0xz0xz1zzzxxxxzxxxzxxxxzxxxzzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
