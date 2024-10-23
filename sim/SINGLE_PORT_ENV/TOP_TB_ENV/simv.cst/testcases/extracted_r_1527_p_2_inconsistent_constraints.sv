class c_1527_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1527_2;
    c_1527_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xx1xxzzx0xz1xxz01xxxx1zzz0xzzxzxxzzzxxxxxxxxxxxzxzxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
