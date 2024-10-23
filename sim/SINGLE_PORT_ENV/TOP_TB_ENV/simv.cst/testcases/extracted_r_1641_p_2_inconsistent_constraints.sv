class c_1641_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1641_2;
    c_1641_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz00z011x011xz01zx00zxz0x0xx11zxzzzxzxxxxzzxzzzxxxxxzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
