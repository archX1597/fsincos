class c_1841_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1841_2;
    c_1841_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1z00z0xz1z100xxzxx1xxxx0x00zxxxzxxxzzxxzzzzzzxxzzxxzxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
