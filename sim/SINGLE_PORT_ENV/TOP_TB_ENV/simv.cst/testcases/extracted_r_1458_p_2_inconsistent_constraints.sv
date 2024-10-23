class c_1458_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1458_2;
    c_1458_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx11z011011x11xz1101zxz01x11xzzzxzzxzzxzzxzxxzzzzzzxxxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
