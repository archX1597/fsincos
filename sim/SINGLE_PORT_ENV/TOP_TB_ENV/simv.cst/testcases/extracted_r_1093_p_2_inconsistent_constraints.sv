class c_1093_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1093_2;
    c_1093_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00111xz11011z100xz10xz1z1xz1100zxzxzxxxzzxzxzzxzzxxxzxxzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
