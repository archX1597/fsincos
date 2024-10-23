class c_1158_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1158_2;
    c_1158_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx10z101110x00z00zzxx0xz0zx11zzxxxxxzzzzxzzxxxxxxxxxzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
