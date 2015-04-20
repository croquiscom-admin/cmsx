todo.view = (ctrl) ->
  <div>
    <ul>
      {ctrl.list.map (task, index) ->
        <li className={task.completed() and 'completed'}>
          <div className="view">
            <input
              className="toggle"
              type="checkbox"
              onclick={m.withAttr 'checked', task.completed}
              checked={task.completed()}
            />
            <label>{task.title()}</label>
            <button className="destroy" onclick={ctrl.remove.bind ctrl, index}/>
          </div>
          <input className="edit"/>
        </li>}
    </ul>
  </div>
