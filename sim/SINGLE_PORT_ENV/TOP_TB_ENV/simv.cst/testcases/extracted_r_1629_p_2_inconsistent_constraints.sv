class c_1629_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1629_2;
    c_1629_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzxz10z110x0x00xx101x1zxz0z0zzxxzxzzzxxxzzzxxxzxzxzxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
