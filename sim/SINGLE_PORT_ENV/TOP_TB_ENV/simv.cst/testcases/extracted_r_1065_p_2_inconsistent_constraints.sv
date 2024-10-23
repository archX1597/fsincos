class c_1065_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1065_2;
    c_1065_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010x0z100z0010110100xzxz1x11101zzzzzxzxzxzxxxzxzzzzzzxzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
