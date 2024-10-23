class c_1365_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1365_2;
    c_1365_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx11zxzx0zzx001000010z10011xx0xzzzzxxxxxxxzxzzxxxxzzzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
