class c_1800_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1800_2;
    c_1800_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0000x01xz0x0zxxz0xzzxz0zxz00zzxxxxxxxzzxxxzxzzzzzzxxxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
