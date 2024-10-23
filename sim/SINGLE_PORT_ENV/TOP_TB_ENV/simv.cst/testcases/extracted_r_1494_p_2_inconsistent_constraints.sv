class c_1494_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1494_2;
    c_1494_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xzx1xxx0010xx1x0xxxz1z0010z0xzxxxzxzxxzzxxzxxxzxxxxxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
