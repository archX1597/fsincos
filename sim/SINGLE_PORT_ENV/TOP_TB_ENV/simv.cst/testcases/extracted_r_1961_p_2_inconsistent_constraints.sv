class c_1961_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1961_2;
    c_1961_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xzx11zzxxzzz1zzz1z0101z0z0xxxzxxzzxzxxxzxxxxzzxzxzxxxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
